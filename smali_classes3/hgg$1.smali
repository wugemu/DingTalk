.class public final Lhgg$1;
.super Ljava/lang/Object;
.source "KaoQinManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhgg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhgg;


# direct methods
.method public constructor <init>(Lhgg;)V
    .locals 0
    .param p1, "this$0"    # Lhgg;

    .prologue
    .line 96
    iput-object p1, p0, Lhgg$1;->a:Lhgg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 99
    invoke-static {}, Lhgh;->a()Lhgh;

    move-result-object v0

    .line 1231
    invoke-virtual {v0}, Lhgh;->b()V

    .line 1233
    invoke-static {}, Lcmw;->b()Lcmv;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;->LIGHT_APP_DAKA:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;

    iget-object v3, v0, Lhgh;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcmv;->a(Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;Ljava/lang/String;)V

    .line 1235
    const/4 v1, 0x0

    iput v1, v0, Lhgh;->e:I

    .line 1237
    const-string/jumbo v0, "lightapp"

    const-string/jumbo v1, "KaoQinViewImpl"

    const-string/jumbo v2, "[Device Beacon] KaoQinViewImpl dismissPopWindow"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method
