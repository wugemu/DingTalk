.class public Lcom/alibaba/android/dingtalkbase/multidexsupport/DDApplication;
.super Landroid/app/Application;
.source "DDApplication.java"


# instance fields
.field private mDDContext:Lcom/alibaba/android/dingtalkbase/multidexsupport/DDContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method protected initDDContext(Lcom/alibaba/android/dingtalkbase/multidexsupport/DDContext;)V
    .locals 0
    .param p1, "ddContext"    # Lcom/alibaba/android/dingtalkbase/multidexsupport/DDContext;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/multidexsupport/DDApplication;->mDDContext:Lcom/alibaba/android/dingtalkbase/multidexsupport/DDContext;

    .line 17
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 21
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/multidexsupport/DDApplication;->mDDContext:Lcom/alibaba/android/dingtalkbase/multidexsupport/DDContext;

    if-nez v0, :cond_0

    .line 25
    :goto_0
    return-void

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/multidexsupport/DDApplication;->mDDContext:Lcom/alibaba/android/dingtalkbase/multidexsupport/DDContext;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/multidexsupport/DDContext;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 29
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/multidexsupport/DDApplication;->mDDContext:Lcom/alibaba/android/dingtalkbase/multidexsupport/DDContext;

    if-nez v0, :cond_0

    .line 33
    :goto_0
    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/multidexsupport/DDApplication;->mDDContext:Lcom/alibaba/android/dingtalkbase/multidexsupport/DDContext;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/multidexsupport/DDContext;->onCreate()V

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 36
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 37
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/multidexsupport/DDApplication;->mDDContext:Lcom/alibaba/android/dingtalkbase/multidexsupport/DDContext;

    if-nez v0, :cond_0

    .line 41
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/multidexsupport/DDApplication;->mDDContext:Lcom/alibaba/android/dingtalkbase/multidexsupport/DDContext;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/multidexsupport/DDContext;->onLowMemory()V

    goto :goto_0
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 45
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/multidexsupport/DDApplication;->mDDContext:Lcom/alibaba/android/dingtalkbase/multidexsupport/DDContext;

    if-nez v0, :cond_0

    .line 49
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/multidexsupport/DDApplication;->mDDContext:Lcom/alibaba/android/dingtalkbase/multidexsupport/DDContext;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/multidexsupport/DDContext;->onTerminate()V

    goto :goto_0
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    .line 53
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/multidexsupport/DDApplication;->mDDContext:Lcom/alibaba/android/dingtalkbase/multidexsupport/DDContext;

    if-nez v0, :cond_0

    .line 57
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/multidexsupport/DDApplication;->mDDContext:Lcom/alibaba/android/dingtalkbase/multidexsupport/DDContext;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/multidexsupport/DDContext;->onTrimMemory(I)V

    goto :goto_0
.end method
