.class final Lbbu$10$2;
.super Ljava/lang/Object;
.source "DingPopWindowCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbu$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

.field final synthetic b:Lbbu$10;


# direct methods
.method constructor <init>(Lbbu$10;Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;)V
    .locals 0
    .param p1, "this$1"    # Lbbu$10;

    .prologue
    .line 356
    iput-object p1, p0, Lbbu$10$2;->b:Lbbu$10;

    iput-object p2, p0, Lbbu$10$2;->a:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 359
    invoke-static {}, Lcmw;->a()Lcmv;

    move-result-object v0

    iget-object v1, p0, Lbbu$10$2;->a:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    invoke-virtual {v0, v1}, Lcmv;->a(Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;)V

    .line 360
    return-void
.end method
