.class public final Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$a;
.super Ljava/lang/Object;
.source "VoiceRecordManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private final b:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "orderId"    # J

    .prologue
    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$a;->a:Ljava/lang/String;

    .line 376
    iput-wide p2, p0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$a;->b:J

    .line 377
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 389
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "VoiceMetaData{"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "url=\'"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$a;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "\'"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, ", orderId="

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$a;->b:J

    .line 391
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "}"

    aput-object v2, v0, v1

    .line 389
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
