.class final Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog$3;
.super Ljava/lang/Object;
.source "FirstCreateTeamTipDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;

    .prologue
    .line 154
    .local p0, "this":Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog$3;, "Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog$3;"
    iput-object p1, p0, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog$3;->a:Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p0, "this":Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog$3;, "Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog$3;"
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog$3;->a:Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;

    invoke-static {v0}, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;->a(Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog$3;->a:Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;

    invoke-static {v0}, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;->a(Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 160
    :cond_0
    return-void
.end method
