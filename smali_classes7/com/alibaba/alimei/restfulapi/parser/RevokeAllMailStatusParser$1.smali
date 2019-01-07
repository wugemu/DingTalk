.class Lcom/alibaba/alimei/restfulapi/parser/RevokeAllMailStatusParser$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "RevokeAllMailStatusParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/restfulapi/parser/RevokeAllMailStatusParser;->onHandleResponseData(Lcom/google/gson/JsonElement;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/restfulapi/parser/RevokeAllMailStatusParser;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/restfulapi/parser/RevokeAllMailStatusParser;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/restfulapi/parser/RevokeAllMailStatusParser;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/parser/RevokeAllMailStatusParser$1;->this$0:Lcom/alibaba/alimei/restfulapi/parser/RevokeAllMailStatusParser;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
