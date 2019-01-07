.class final Lgua$2;
.super Ljava/lang/Object;
.source "RecruitVideoBaseHolder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgua;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgua;


# direct methods
.method constructor <init>(Lgua;)V
    .locals 0
    .param p1, "this$0"    # Lgua;

    .prologue
    .line 87
    iput-object p1, p0, Lgua$2;->a:Lgua;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 90
    iget-object v0, p0, Lgua$2;->a:Lgua;

    iget-object v0, v0, Lgua;->x:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->a()V

    .line 91
    return-void
.end method
