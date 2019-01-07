.class public Lcom/alibaba/android/dingtalkim/encrypt/EncryptSdkFactory$2;
.super Ljava/util/ArrayList;
.source "EncryptSdkFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldhp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ldhp;


# direct methods
.method public constructor <init>(Ldhp;)V
    .locals 1
    .param p1, "this$0"    # Ldhp;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/encrypt/EncryptSdkFactory$2;->this$0:Ldhp;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    const-string/jumbo v0, "1289"

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/encrypt/EncryptSdkFactory$2;->add(Ljava/lang/Object;)Z

    .line 29
    return-void
.end method
