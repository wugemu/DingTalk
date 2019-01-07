.class public final Lfew;
.super Lfex;
.source "LoadPersonalPresenter.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;Lfet;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "param"    # Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;",
            "Lfet",
            "<",
            "Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p3, "view":Lfet;, "Lfet<Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lfex;-><init>(Landroid/app/Activity;Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;Lfet;Z)V

    .line 16
    return-void
.end method


# virtual methods
.method protected final a(Landroid/app/Activity;Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;)Lfeu;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "paramObject"    # Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;

    .prologue
    .line 20
    new-instance v0, Lfev;

    invoke-direct {v0, p1, p2}, Lfev;-><init>(Landroid/app/Activity;Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;)V

    return-object v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lfew;->b:Lfeu;

    invoke-virtual {v0}, Lfeu;->d()V

    .line 29
    return-void
.end method
