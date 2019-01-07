.class final Lhft$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "StickPageTestCDNLocalDataAccessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhft;->b()Ljava/util/List;
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
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhft;


# direct methods
.method constructor <init>(Lhft;)V
    .locals 0
    .param p1, "this$0"    # Lhft;

    .prologue
    .line 48
    iput-object p1, p0, Lhft$1;->a:Lhft;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
