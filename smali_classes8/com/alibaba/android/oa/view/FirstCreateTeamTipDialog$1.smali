.class final Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog$1;
.super Ljava/lang/Object;
.source "FirstCreateTeamTipDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 117
    .local p0, "this":Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog$1;, "Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog$1;"
    iput-object p1, p0, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog$1;->a:Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 120
    .local p0, "this":Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog$1;, "Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog$1;"
    iget-object v0, p0, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog$1;->a:Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;->dismiss()V

    .line 121
    return-void
.end method
