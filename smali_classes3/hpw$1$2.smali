.class final Lhpw$1$2;
.super Ljava/lang/Object;
.source "DakaPopupWindowUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhpw$1;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhpw$1;


# direct methods
.method constructor <init>(Lhpw$1;)V
    .locals 0
    .param p1, "this$1"    # Lhpw$1;

    .prologue
    .line 144
    iput-object p1, p0, Lhpw$1$2;->a:Lhpw$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 147
    new-instance v0, Lhio;

    invoke-direct {v0}, Lhio;-><init>()V

    .line 148
    .local v0, "model":Lhio;
    iget-object v1, p0, Lhpw$1$2;->a:Lhpw$1;

    iget-object v1, v1, Lhpw$1;->b:Lhkz;

    iget-wide v2, v1, Lhkz;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lhio;->c:Ljava/lang/Long;

    .line 149
    iget-object v1, p0, Lhpw$1$2;->a:Lhpw$1;

    iget-object v1, v1, Lhpw$1;->b:Lhkz;

    iget-wide v2, v1, Lhkz;->l:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lhio;->b:Ljava/lang/Long;

    .line 150
    iget-object v1, p0, Lhpw$1$2;->a:Lhpw$1;

    iget-object v1, v1, Lhpw$1;->b:Lhkz;

    iget-object v1, v1, Lhkz;->d:Ljava/lang/String;

    iput-object v1, v0, Lhio;->a:Ljava/lang/String;

    .line 151
    const-class v1, Lcom/alibaba/lightapp/runtime/idl/OAUploadIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/lightapp/runtime/idl/OAUploadIService;

    new-instance v2, Lhpw$1$2$1;

    invoke-direct {v2, p0, v0}, Lhpw$1$2$1;-><init>(Lhpw$1$2;Lhio;)V

    invoke-interface {v1, v0, v2}, Lcom/alibaba/lightapp/runtime/idl/OAUploadIService;->autoCheckConfirm(Lhio;Liyv;)V

    .line 165
    return-void
.end method
