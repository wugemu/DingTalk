.class final Lhpw$2;
.super Ljava/lang/Object;
.source "DakaPopupWindowUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhpw;->a(IJIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lhkz;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

.field final synthetic b:Lhpw;


# direct methods
.method constructor <init>(Lhpw;Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;)V
    .locals 0
    .param p1, "this$0"    # Lhpw;

    .prologue
    .line 201
    iput-object p1, p0, Lhpw$2;->b:Lhpw;

    iput-object p2, p0, Lhpw$2;->a:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 204
    invoke-static {}, Lcmw;->b()Lcmv;

    move-result-object v0

    iget-object v1, p0, Lhpw$2;->a:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    invoke-virtual {v0, v1}, Lcmv;->a(Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;)V

    .line 205
    return-void
.end method
