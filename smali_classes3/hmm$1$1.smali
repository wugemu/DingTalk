.class final Lhmm$1$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "MiniAppOpenTypeSPLocalDataAccessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhmm$1;->run()V
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
        "Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhmm$1;


# direct methods
.method constructor <init>(Lhmm$1;)V
    .locals 0
    .param p1, "this$1"    # Lhmm$1;

    .prologue
    .line 60
    iput-object p1, p0, Lhmm$1$1;->a:Lhmm$1;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
