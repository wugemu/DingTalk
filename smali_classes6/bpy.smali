.class public final Lbpy;
.super Lbpz;
.source "LoadPersonalPresenter.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;Lbpv;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "param"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;",
            "Lbpv",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p3, "view":Lbpv;, "Lbpv<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lbpz;-><init>(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;Lbpv;Z)V

    .line 16
    return-void
.end method


# virtual methods
.method protected final a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;)Lbpw;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "paramObject"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;

    .prologue
    .line 20
    new-instance v0, Lbpx;

    invoke-direct {v0, p1, p2}, Lbpx;-><init>(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;)V

    return-object v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lbpy;->b:Lbpw;

    invoke-virtual {v0}, Lbpw;->d()V

    .line 28
    return-void
.end method
