.class final Lhmj$1$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "LocalMiniAppListSPSourceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhmj$1;->run()V
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
        "Lhoe;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhmj$1;


# direct methods
.method constructor <init>(Lhmj$1;)V
    .locals 0
    .param p1, "this$1"    # Lhmj$1;

    .prologue
    .line 42
    iput-object p1, p0, Lhmj$1$1;->a:Lhmj$1;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
