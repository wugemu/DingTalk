.class final Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$1;
.super Ljava/lang/Object;
.source "VoiceRecordManager.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->a(JZILdzh;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:J

.field final synthetic c:Z

.field final synthetic d:Ldzh;

.field final synthetic e:Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;IJZLdzh;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$1;->e:Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;

    iput p2, p0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$1;->a:I

    iput-wide p3, p0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$1;->b:J

    iput-boolean p5, p0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$1;->c:Z

    iput-object p6, p0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$1;->d:Ldzh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 162
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "VoiceRecordManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "reason,"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget v0, p0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$1;->a:I

    if-lez v0, :cond_0

    .line 164
    iget v0, p0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$1;->a:I

    add-int/lit8 v5, v0, -0x1

    .line 165
    .local v5, "tryTimes":I
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$1;->e:Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$1;->b:J

    iget-boolean v4, p0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$1;->c:Z

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$1;->d:Ldzh;

    .line 1054
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->a(JZILdzh;)V

    .line 167
    .end local v5    # "tryTimes":I
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 158
    return-void
.end method
