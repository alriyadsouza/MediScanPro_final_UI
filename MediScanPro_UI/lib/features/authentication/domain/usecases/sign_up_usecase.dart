import 'package:dartz/dartz.dart';
import 'package:mediscanpro_ui/core/data/error/failure.dart';
import 'package:mediscanpro_ui/core/domain/usecase/usecase.dart';
import 'package:mediscanpro_ui/features/authentication/domain/entities/user_profile.dart';
import 'package:mediscanpro_ui/features/authentication/domain/repositories/auth_repository.dart';

class SignUpUseCase extends UseCase<Unit, UserProfile> {
  SignUpUseCase(this.repository);
  final AuthRepository repository;
  @override
  Future<Either<Failure, Unit>> call(UserProfile params) async {
    return await repository.createUserWithEmailAndPassword(params);
  }
}
