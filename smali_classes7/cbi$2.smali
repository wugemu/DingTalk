.class final Lcbi$2;
.super Lcom/google/gson/reflect/TypeToken;
.source "UnSendRedPacketsMessageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcbi;
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
        "Lcbi$a;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcbi;


# direct methods
.method constructor <init>(Lcbi;)V
    .locals 0
    .param p1, "this$0"    # Lcbi;

    .prologue
    .line 101
    iput-object p1, p0, Lcbi$2;->a:Lcbi;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
