.class final Lcom/alibaba/android/ding/impl/DingInterfaceImpl$3;
.super Ljava/lang/Object;
.source "DingInterfaceImpl.java"

# interfaces
.implements Lbko$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/impl/DingInterfaceImpl;->a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;JJZLcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:Z

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcma;

.field final synthetic h:Lcom/alibaba/android/ding/impl/DingInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/impl/DingInterfaceImpl;JJJZLjava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/impl/DingInterfaceImpl;

    .prologue
    .line 1392
    iput-object p1, p0, Lcom/alibaba/android/ding/impl/DingInterfaceImpl$3;->h:Lcom/alibaba/android/ding/impl/DingInterfaceImpl;

    iput-wide p2, p0, Lcom/alibaba/android/ding/impl/DingInterfaceImpl$3;->a:J

    iput-wide p4, p0, Lcom/alibaba/android/ding/impl/DingInterfaceImpl$3;->b:J

    iput-wide p6, p0, Lcom/alibaba/android/ding/impl/DingInterfaceImpl$3;->c:J

    iput-boolean p8, p0, Lcom/alibaba/android/ding/impl/DingInterfaceImpl$3;->d:Z

    iput-object p9, p0, Lcom/alibaba/android/ding/impl/DingInterfaceImpl$3;->e:Ljava/lang/String;

    iput-object p10, p0, Lcom/alibaba/android/ding/impl/DingInterfaceImpl$3;->f:Ljava/lang/String;

    iput-object p11, p0, Lcom/alibaba/android/ding/impl/DingInterfaceImpl$3;->g:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1395
    new-instance v0, Lbfu;

    invoke-direct {v0}, Lbfu;-><init>()V

    .line 1396
    .local v0, "meetingTimeUpdateObject":Lbfu;
    iget-wide v2, p0, Lcom/alibaba/android/ding/impl/DingInterfaceImpl$3;->a:J

    .line 2024
    iput-wide v2, v0, Lbfu;->a:J

    .line 1397
    const/4 v1, 0x2

    .line 2028
    iput v1, v0, Lbfu;->b:I

    .line 1398
    iget-wide v2, p0, Lcom/alibaba/android/ding/impl/DingInterfaceImpl$3;->b:J

    .line 2032
    iput-wide v2, v0, Lbfu;->c:J

    .line 1399
    iget-wide v2, p0, Lcom/alibaba/android/ding/impl/DingInterfaceImpl$3;->c:J

    .line 2036
    iput-wide v2, v0, Lbfu;->d:J

    .line 1400
    iget-boolean v1, p0, Lcom/alibaba/android/ding/impl/DingInterfaceImpl$3;->d:Z

    .line 2052
    iput-boolean v1, v0, Lbfu;->g:Z

    .line 1401
    iget-object v1, p0, Lcom/alibaba/android/ding/impl/DingInterfaceImpl$3;->e:Ljava/lang/String;

    .line 3040
    iput-object v1, v0, Lbfu;->e:Ljava/lang/String;

    .line 1402
    iget-object v1, p0, Lcom/alibaba/android/ding/impl/DingInterfaceImpl$3;->f:Ljava/lang/String;

    .line 3044
    iput-object v1, v0, Lbfu;->f:Ljava/lang/String;

    .line 1403
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/impl/DingInterfaceImpl$3;->g:Lcma;

    invoke-virtual {v1, v0, v2}, Lbbp;->a(Lbfu;Lcma;)V

    .line 1404
    return-void
.end method

.method public final b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1408
    new-instance v0, Lbfu;

    invoke-direct {v0}, Lbfu;-><init>()V

    .line 1409
    .local v0, "meetingTimeUpdateObject":Lbfu;
    iget-wide v2, p0, Lcom/alibaba/android/ding/impl/DingInterfaceImpl$3;->a:J

    .line 4024
    iput-wide v2, v0, Lbfu;->a:J

    .line 1410
    const/4 v1, 0x1

    .line 4028
    iput v1, v0, Lbfu;->b:I

    .line 1411
    iget-wide v2, p0, Lcom/alibaba/android/ding/impl/DingInterfaceImpl$3;->b:J

    .line 4032
    iput-wide v2, v0, Lbfu;->c:J

    .line 1412
    iget-wide v2, p0, Lcom/alibaba/android/ding/impl/DingInterfaceImpl$3;->c:J

    .line 4036
    iput-wide v2, v0, Lbfu;->d:J

    .line 1413
    iget-boolean v1, p0, Lcom/alibaba/android/ding/impl/DingInterfaceImpl$3;->d:Z

    .line 4052
    iput-boolean v1, v0, Lbfu;->g:Z

    .line 1414
    iget-object v1, p0, Lcom/alibaba/android/ding/impl/DingInterfaceImpl$3;->f:Ljava/lang/String;

    .line 5044
    iput-object v1, v0, Lbfu;->f:Ljava/lang/String;

    .line 1415
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/impl/DingInterfaceImpl$3;->g:Lcma;

    invoke-virtual {v1, v0, v2}, Lbbp;->a(Lbfu;Lcma;)V

    .line 1416
    return-void
.end method
