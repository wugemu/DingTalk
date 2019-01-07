.class public final Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager$1;
.super Ljava/lang/Object;
.source "EncryptDegradeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager$1;->b:Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager;

    iput-wide p2, p0, Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager$1;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 105
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager$1;->b:Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager;

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager$1;->a:J

    .line 1035
    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager;->b(J)Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager$FileEncryptTestResult;

    move-result-object v0

    .line 106
    .local v0, "checkResult":Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager$FileEncryptTestResult;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager$1;->b:Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager;

    .line 2035
    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager;->a:Lfp;

    .line 106
    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager$1;->a:J

    invoke-virtual {v1, v2, v3, v0}, Lfp;->b(JLjava/lang/Object;)V

    .line 107
    return-void
.end method
