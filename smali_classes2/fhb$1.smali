.class final Lfhb$1;
.super Ljava/lang/Object;
.source "ContactItemViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfhb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/homepage/CommonContactItem;

.field final synthetic b:Lfhm;

.field final synthetic c:Lfhb;


# direct methods
.method constructor <init>(Lfhb;Lcom/alibaba/android/user/contact/homepage/CommonContactItem;Lfhm;)V
    .locals 0
    .param p1, "this$0"    # Lfhb;

    .prologue
    .line 85
    iput-object p1, p0, Lfhb$1;->c:Lfhb;

    iput-object p2, p0, Lfhb$1;->a:Lcom/alibaba/android/user/contact/homepage/CommonContactItem;

    iput-object p3, p0, Lfhb$1;->b:Lfhm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 88
    iget-object v0, p0, Lfhb$1;->c:Lfhb;

    invoke-static {v0}, Lfhb;->a(Lfhb;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    invoke-static {}, Lflz;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lfhb$1$1;

    invoke-direct {v2, p0}, Lfhb$1$1;-><init>(Lfhb$1;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 96
    return-void
.end method
