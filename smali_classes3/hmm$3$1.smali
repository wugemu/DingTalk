.class final Lhmm$3$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "MiniAppOpenTypeSPLocalDataAccessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhmm$3;->run()V
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
.field final synthetic a:Lhmm$3;


# direct methods
.method constructor <init>(Lhmm$3;)V
    .locals 0
    .param p1, "this$1"    # Lhmm$3;

    .prologue
    .line 122
    iput-object p1, p0, Lhmm$3$1;->a:Lhmm$3;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
