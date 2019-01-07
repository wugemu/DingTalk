.class final Lbky$4$1;
.super Ljava/lang/Object;
.source "PopupDisplayAsynObjectBuilder.java"

# interfaces
.implements Lbkl$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbky$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbky$4;


# direct methods
.method constructor <init>(Lbky$4;)V
    .locals 0
    .param p1, "this$0"    # Lbky$4;

    .prologue
    .line 567
    iput-object p1, p0, Lbky$4$1;->a:Lbky$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 570
    invoke-static {}, Lcmw;->a()Lcmv;

    move-result-object v0

    iget-object v1, p0, Lbky$4$1;->a:Lbky$4;

    iget-object v1, v1, Lbky$4;->c:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;

    iget-object v2, p0, Lbky$4$1;->a:Lbky$4;

    iget-object v2, v2, Lbky$4;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcmv;->a(Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;Ljava/lang/String;)V

    .line 571
    return-void
.end method
