.class final Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$9;
.super Ljava/lang/Object;
.source "DingNewTabListFragmentImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    .prologue
    .line 936
    iput-object p1, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$9;->b:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    iput-object p2, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$9;->a:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 939
    const-string/jumbo v0, "pref_key_has_shown_delete_ding_confirm_dialog"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 940
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$9;->b:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$9;->a:Lcma;

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->a(Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;Lcma;)V

    .line 941
    return-void
.end method
