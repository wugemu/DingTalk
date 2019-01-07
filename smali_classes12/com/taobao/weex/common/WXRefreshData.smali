.class public Lcom/taobao/weex/common/WXRefreshData;
.super Ljava/lang/Object;
.source "WXRefreshData.java"


# instance fields
.field public data:Ljava/lang/String;

.field public isDirty:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "isDirty"    # Z

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/taobao/weex/common/WXRefreshData;->data:Ljava/lang/String;

    .line 29
    iput-boolean p2, p0, Lcom/taobao/weex/common/WXRefreshData;->isDirty:Z

    .line 30
    return-void
.end method
