.class final Lbio$2;
.super Ljava/lang/Object;
.source "EditMeetingRecorderHolder.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbio;-><init>(Landroid/view/View;Lbio$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbio;


# direct methods
.method constructor <init>(Lbio;)V
    .locals 0
    .param p1, "this$0"    # Lbio;

    .prologue
    .line 45
    iput-object p1, p0, Lbio$2;->a:Lbio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 48
    iget-object v0, p0, Lbio$2;->a:Lbio;

    .line 1017
    iget-object v0, v0, Lbio;->g:Lbio$a;

    .line 48
    if-nez v0, :cond_0

    .line 56
    :goto_0
    return-void

    .line 51
    :cond_0
    if-eqz p2, :cond_1

    .line 52
    iget-object v0, p0, Lbio$2;->a:Lbio;

    .line 2017
    iget-object v0, v0, Lbio;->g:Lbio$a;

    .line 52
    iget-object v1, p0, Lbio$2;->a:Lbio;

    .line 3017
    iget-object v1, v1, Lbio;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 52
    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-interface {v0, v2, v3}, Lbio$a;->a(J)V

    goto :goto_0

    .line 54
    :cond_1
    iget-object v0, p0, Lbio$2;->a:Lbio;

    .line 4017
    iget-object v0, v0, Lbio;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 54
    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    goto :goto_0
.end method
