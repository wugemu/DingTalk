.class public Lcom/alibaba/android/dingtalkim/encrypt/EncryptSdkFactory$1;
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
        "Lcom/alibaba/android/dtencrypt/IDTEncrypt;",
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
    .line 20
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/encrypt/EncryptSdkFactory$1;->this$0:Ldhp;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/encrypt/EncryptSdkFactory$1;->this$0:Ldhp;

    invoke-static {v0}, Ldhp;->a(Ldhp;)Lcom/alibaba/android/dtencrypt/IDTEncrypt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/encrypt/EncryptSdkFactory$1;->add(Ljava/lang/Object;)Z

    .line 23
    return-void
.end method
