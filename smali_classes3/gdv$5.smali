.class final Lgdv$5;
.super Ljava/lang/Object;
.source "DentryListHeaderViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgdv;-><init>(Landroid/view/View;Lgdu$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgdv;


# direct methods
.method constructor <init>(Lgdv;)V
    .locals 0
    .param p1, "this$0"    # Lgdv;

    .prologue
    .line 113
    iput-object p1, p0, Lgdv$5;->a:Lgdv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 116
    iget-object v0, p0, Lgdv$5;->a:Lgdv;

    invoke-static {v0}, Lgdv;->b(Lgdv;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 117
    iget-object v0, p0, Lgdv$5;->a:Lgdv;

    invoke-static {v0}, Lgdv;->a(Lgdv;)Lgdu$a;

    move-result-object v0

    invoke-interface {v0}, Lgdu$a;->m()V

    .line 118
    return-void
.end method