.class public final Lewn$12;
.super Ljava/lang/Object;
.source "TeleConfQuickStartCallHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lewn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:I

.field final synthetic c:Lewn;


# direct methods
.method public constructor <init>(Lewn;Landroid/app/Activity;I)V
    .locals 0
    .param p1, "this$0"    # Lewn;

    .prologue
    .line 1119
    iput-object p1, p0, Lewn$12;->c:Lewn;

    iput-object p2, p0, Lewn$12;->a:Landroid/app/Activity;

    iput p3, p0, Lewn$12;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1122
    iget-object v0, p0, Lewn$12;->c:Lewn;

    iget-object v1, p0, Lewn$12;->a:Landroid/app/Activity;

    iget v2, p0, Lewn$12;->b:I

    const-string/jumbo v3, "CONF_RECORD_ACTIVITY_CREATE_VIDEO_CALL"

    sget v4, Leuj$l;->dt_conference_start_btntitle_videoconf:I

    invoke-static {v0, v1, v2, v3, v4}, Lewn;->a(Lewn;Landroid/app/Activity;ILjava/lang/String;I)V

    .line 1125
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "call_record_start_conf_video_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1126
    return-void
.end method
