.class final Lbhi$3;
.super Ljava/lang/Object;
.source "DingMeetingMinutesManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbhi;->a(JJLcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Lcom/alibaba/wukong/Callback;

.field final synthetic d:Lbhi;


# direct methods
.method constructor <init>(Lbhi;JJLcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lbhi;

    .prologue
    .line 113
    iput-object p1, p0, Lbhi$3;->d:Lbhi;

    iput-wide p2, p0, Lbhi$3;->a:J

    iput-wide p4, p0, Lbhi$3;->b:J

    iput-object p6, p0, Lbhi$3;->c:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 117
    iget-object v1, p0, Lbhi$3;->d:Lbhi;

    iget-wide v2, p0, Lbhi$3;->a:J

    iget-wide v4, p0, Lbhi$3;->b:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lbhi;->b(JJ)Lbfv;

    move-result-object v0

    .line 118
    .local v0, "detailObject":Lbfv;
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lbhi$3$1;

    invoke-direct {v2, p0, v0}, Lbhi$3$1;-><init>(Lbhi$3;Lbfv;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 129
    return-void
.end method
