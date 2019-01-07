.class final Lewn$18;
.super Ljava/lang/Object;
.source "TeleConfQuickStartCallHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lewn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:I

.field final synthetic d:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

.field final synthetic e:Landroid/app/Activity;

.field final synthetic f:Lewn;


# direct methods
.method constructor <init>(Lewn;Ljava/lang/String;JILcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;Landroid/app/Activity;)V
    .locals 1
    .param p1, "this$0"    # Lewn;

    .prologue
    .line 273
    iput-object p1, p0, Lewn$18;->f:Lewn;

    iput-object p2, p0, Lewn$18;->a:Ljava/lang/String;

    iput-wide p3, p0, Lewn$18;->b:J

    iput p5, p0, Lewn$18;->c:I

    iput-object p6, p0, Lewn$18;->d:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    iput-object p7, p0, Lewn$18;->e:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 276
    iget-object v0, p0, Lewn$18;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lewn$18;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v0

    iget-object v1, p0, Lewn$18;->a:Ljava/lang/String;

    new-instance v2, Lewn$18$1;

    invoke-direct {v2, p0}, Lewn$18$1;-><init>(Lewn$18;)V

    invoke-virtual {v0, v1, v2}, Lewh;->a(Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method
