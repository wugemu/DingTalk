.class final Lfgi$2;
.super Ljava/lang/Object;
.source "CreateOrgAdapter.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfgi;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

.field final synthetic b:Lfgi;


# direct methods
.method constructor <init>(Lfgi;Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;)V
    .locals 0
    .param p1, "this$0"    # Lfgi;

    .prologue
    .line 81
    iput-object p1, p0, Lfgi$2;->b:Lfgi;

    iput-object p2, p0, Lfgi$2;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 94
    iget-object v0, p0, Lfgi$2;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->name:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 85
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 90
    return-void
.end method
