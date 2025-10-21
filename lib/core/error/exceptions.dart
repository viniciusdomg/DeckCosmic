class ServerException<From, To> implements Exception{

  String message;

  ServerException(this.message);

  @override
  String toString() {
    return "Erro ao mapear de ${From} para ${To}: ${message}";
  }
}

class CacheException<From, To> implements Exception{
  String message;

  CacheException(this.message);

  @override
  String toString() {
    return "Erro ao mapear de ${From} para ${To}: ${message}";
  }
}