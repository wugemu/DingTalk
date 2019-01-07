.class final Leen$2;
.super Lcom/google/gson/reflect/TypeToken;
.source "OAXmlLocalDataAccessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leen;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Leen;


# direct methods
.method constructor <init>(Leen;)V
    .locals 0
    .param p1, "this$0"    # Leen;

    .prologue
    .line 97
    iput-object p1, p0, Leen$2;->a:Leen;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
