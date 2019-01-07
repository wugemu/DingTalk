.class final Leal$2;
.super Lcom/google/gson/reflect/TypeToken;
.source "PushTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken",
        "<",
        "Ljava/util/HashSet",
        "<",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Leal;


# direct methods
.method constructor <init>(Leal;)V
    .locals 0
    .param p1, "this$0"    # Leal;

    .prologue
    .line 471
    iput-object p1, p0, Leal$2;->a:Leal;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
