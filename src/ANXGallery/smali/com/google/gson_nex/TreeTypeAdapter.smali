.class final Lcom/google/gson_nex/TreeTypeAdapter;
.super Lcom/google/gson_nex/TypeAdapter;
.source "TreeTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson_nex/TreeTypeAdapter$SingleTypeFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/gson_nex/TypeAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private delegate:Lcom/google/gson_nex/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson_nex/TypeAdapter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final deserializer:Lcom/google/gson_nex/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson_nex/JsonDeserializer",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final gson:Lcom/google/gson_nex/Gson;

.field private final serializer:Lcom/google/gson_nex/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson_nex/JsonSerializer",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final skipPast:Lcom/google/gson_nex/TypeAdapterFactory;

.field private final typeToken:Lcom/google/gson_nex/reflect/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson_nex/reflect/TypeToken",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/gson_nex/JsonSerializer;Lcom/google/gson_nex/JsonDeserializer;Lcom/google/gson_nex/Gson;Lcom/google/gson_nex/reflect/TypeToken;Lcom/google/gson_nex/TypeAdapterFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson_nex/JsonSerializer",
            "<TT;>;",
            "Lcom/google/gson_nex/JsonDeserializer",
            "<TT;>;",
            "Lcom/google/gson_nex/Gson;",
            "Lcom/google/gson_nex/reflect/TypeToken",
            "<TT;>;",
            "Lcom/google/gson_nex/TypeAdapterFactory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/gson_nex/TypeAdapter;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/gson_nex/TreeTypeAdapter;->serializer:Lcom/google/gson_nex/JsonSerializer;

    .line 44
    iput-object p2, p0, Lcom/google/gson_nex/TreeTypeAdapter;->deserializer:Lcom/google/gson_nex/JsonDeserializer;

    .line 45
    iput-object p3, p0, Lcom/google/gson_nex/TreeTypeAdapter;->gson:Lcom/google/gson_nex/Gson;

    .line 46
    iput-object p4, p0, Lcom/google/gson_nex/TreeTypeAdapter;->typeToken:Lcom/google/gson_nex/reflect/TypeToken;

    .line 47
    iput-object p5, p0, Lcom/google/gson_nex/TreeTypeAdapter;->skipPast:Lcom/google/gson_nex/TypeAdapterFactory;

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gson_nex/JsonSerializer;Lcom/google/gson_nex/JsonDeserializer;Lcom/google/gson_nex/Gson;Lcom/google/gson_nex/reflect/TypeToken;Lcom/google/gson_nex/TypeAdapterFactory;Lcom/google/gson_nex/TreeTypeAdapter$1;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct/range {p0 .. p5}, Lcom/google/gson_nex/TreeTypeAdapter;-><init>(Lcom/google/gson_nex/JsonSerializer;Lcom/google/gson_nex/JsonDeserializer;Lcom/google/gson_nex/Gson;Lcom/google/gson_nex/reflect/TypeToken;Lcom/google/gson_nex/TypeAdapterFactory;)V

    return-void
.end method

.method private delegate()Lcom/google/gson_nex/TypeAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson_nex/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/gson_nex/TreeTypeAdapter;->delegate:Lcom/google/gson_nex/TypeAdapter;

    .line 76
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/gson_nex/TreeTypeAdapter;->gson:Lcom/google/gson_nex/Gson;

    iget-object v1, p0, Lcom/google/gson_nex/TreeTypeAdapter;->skipPast:Lcom/google/gson_nex/TypeAdapterFactory;

    iget-object v2, p0, Lcom/google/gson_nex/TreeTypeAdapter;->typeToken:Lcom/google/gson_nex/reflect/TypeToken;

    .line 78
    invoke-virtual {v0, v1, v2}, Lcom/google/gson_nex/Gson;->getDelegateAdapter(Lcom/google/gson_nex/TypeAdapterFactory;Lcom/google/gson_nex/reflect/TypeToken;)Lcom/google/gson_nex/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson_nex/TreeTypeAdapter;->delegate:Lcom/google/gson_nex/TypeAdapter;

    goto :goto_0
.end method

.method public static newFactory(Lcom/google/gson_nex/reflect/TypeToken;Ljava/lang/Object;)Lcom/google/gson_nex/TypeAdapterFactory;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson_nex/reflect/TypeToken",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/gson_nex/TypeAdapterFactory;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 85
    new-instance v0, Lcom/google/gson_nex/TreeTypeAdapter$SingleTypeFactory;

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/gson_nex/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/google/gson_nex/reflect/TypeToken;ZLjava/lang/Class;Lcom/google/gson_nex/TreeTypeAdapter$1;)V

    return-object v0
.end method

.method public static newFactoryWithMatchRawType(Lcom/google/gson_nex/reflect/TypeToken;Ljava/lang/Object;)Lcom/google/gson_nex/TypeAdapterFactory;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson_nex/reflect/TypeToken",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/gson_nex/TypeAdapterFactory;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 95
    invoke-virtual {p0}, Lcom/google/gson_nex/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/gson_nex/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v3, 0x1

    .line 96
    :goto_0
    new-instance v0, Lcom/google/gson_nex/TreeTypeAdapter$SingleTypeFactory;

    move-object v1, p1

    move-object v2, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/gson_nex/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/google/gson_nex/reflect/TypeToken;ZLjava/lang/Class;Lcom/google/gson_nex/TreeTypeAdapter$1;)V

    return-object v0

    .line 95
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static newTypeHierarchyFactory(Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/gson_nex/TypeAdapterFactory;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/gson_nex/TypeAdapterFactory;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 105
    new-instance v0, Lcom/google/gson_nex/TreeTypeAdapter$SingleTypeFactory;

    const/4 v3, 0x0

    move-object v1, p1

    move-object v4, p0

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/gson_nex/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/google/gson_nex/reflect/TypeToken;ZLjava/lang/Class;Lcom/google/gson_nex/TreeTypeAdapter$1;)V

    return-object v0
.end method


# virtual methods
.method public read(Lcom/google/gson_nex/stream/JsonReader;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson_nex/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/gson_nex/TreeTypeAdapter;->deserializer:Lcom/google/gson_nex/JsonDeserializer;

    if-nez v0, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/google/gson_nex/TreeTypeAdapter;->delegate()Lcom/google/gson_nex/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/gson_nex/TypeAdapter;->read(Lcom/google/gson_nex/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    .line 54
    :cond_0
    invoke-static {p1}, Lcom/google/gson_nex/internal/Streams;->parse(Lcom/google/gson_nex/stream/JsonReader;)Lcom/google/gson_nex/JsonElement;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/google/gson_nex/JsonElement;->isJsonNull()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    const/4 v0, 0x0

    goto :goto_0

    .line 58
    :cond_1
    iget-object v1, p0, Lcom/google/gson_nex/TreeTypeAdapter;->deserializer:Lcom/google/gson_nex/JsonDeserializer;

    iget-object v2, p0, Lcom/google/gson_nex/TreeTypeAdapter;->typeToken:Lcom/google/gson_nex/reflect/TypeToken;

    invoke-virtual {v2}, Lcom/google/gson_nex/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    iget-object v3, p0, Lcom/google/gson_nex/TreeTypeAdapter;->gson:Lcom/google/gson_nex/Gson;

    iget-object v3, v3, Lcom/google/gson_nex/Gson;->deserializationContext:Lcom/google/gson_nex/JsonDeserializationContext;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/gson_nex/JsonDeserializer;->deserialize(Lcom/google/gson_nex/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson_nex/JsonDeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public write(Lcom/google/gson_nex/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson_nex/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/gson_nex/TreeTypeAdapter;->serializer:Lcom/google/gson_nex/JsonSerializer;

    if-nez v0, :cond_0

    .line 63
    invoke-direct {p0}, Lcom/google/gson_nex/TreeTypeAdapter;->delegate()Lcom/google/gson_nex/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/gson_nex/TypeAdapter;->write(Lcom/google/gson_nex/stream/JsonWriter;Ljava/lang/Object;)V

    .line 72
    :goto_0
    return-void

    .line 66
    :cond_0
    if-nez p2, :cond_1

    .line 67
    invoke-virtual {p1}, Lcom/google/gson_nex/stream/JsonWriter;->nullValue()Lcom/google/gson_nex/stream/JsonWriter;

    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/google/gson_nex/TreeTypeAdapter;->serializer:Lcom/google/gson_nex/JsonSerializer;

    iget-object v1, p0, Lcom/google/gson_nex/TreeTypeAdapter;->typeToken:Lcom/google/gson_nex/reflect/TypeToken;

    invoke-virtual {v1}, Lcom/google/gson_nex/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gson_nex/TreeTypeAdapter;->gson:Lcom/google/gson_nex/Gson;

    iget-object v2, v2, Lcom/google/gson_nex/Gson;->serializationContext:Lcom/google/gson_nex/JsonSerializationContext;

    invoke-interface {v0, p2, v1, v2}, Lcom/google/gson_nex/JsonSerializer;->serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson_nex/JsonSerializationContext;)Lcom/google/gson_nex/JsonElement;

    move-result-object v0

    .line 71
    invoke-static {v0, p1}, Lcom/google/gson_nex/internal/Streams;->write(Lcom/google/gson_nex/JsonElement;Lcom/google/gson_nex/stream/JsonWriter;)V

    goto :goto_0
.end method
