.class Lcom/alibaba/alimei/contact/datasource/ContactDatasourceImpl$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "ContactDatasourceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/contact/datasource/ContactDatasourceImpl;->queryUserSelfContact(J)Lcom/alibaba/alimei/contact/model/UserSelfContactModel;
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
        "Lsw;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/contact/datasource/ContactDatasourceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/contact/datasource/ContactDatasourceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/contact/datasource/ContactDatasourceImpl;

    .prologue
    .line 737
    iput-object p1, p0, Lcom/alibaba/alimei/contact/datasource/ContactDatasourceImpl$1;->this$0:Lcom/alibaba/alimei/contact/datasource/ContactDatasourceImpl;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
