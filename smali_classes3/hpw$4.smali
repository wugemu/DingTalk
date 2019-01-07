.class public final Lhpw$4;
.super Ljava/lang/Object;
.source "DakaPopupWindowUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhpw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhpw;


# direct methods
.method public constructor <init>(Lhpw;)V
    .locals 0
    .param p1, "this$0"    # Lhpw;

    .prologue
    .line 226
    iput-object p1, p0, Lhpw$4;->a:Lhpw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 229
    invoke-static {}, Lcmw;->b()Lcmv;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;->LIGHT_APP_DAKA:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;

    iget-object v2, p0, Lhpw$4;->a:Lhpw;

    invoke-static {v2}, Lhpw;->b(Lhpw;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcmv;->a(Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;Ljava/lang/String;)V

    .line 230
    return-void
.end method
