.class public abstract Lcom/alibaba/android/dingtalkbase/multidexsupport/DDContext;
.super Ljava/lang/Object;
.source "DDContext.java"


# instance fields
.field private final mApplication:Lcom/alibaba/android/dingtalkbase/multidexsupport/DDApplication;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/multidexsupport/DDApplication;)V
    .locals 0
    .param p1, "application"    # Lcom/alibaba/android/dingtalkbase/multidexsupport/DDApplication;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/multidexsupport/DDContext;->mApplication:Lcom/alibaba/android/dingtalkbase/multidexsupport/DDApplication;

    .line 17
    return-void
.end method


# virtual methods
.method public getApplication()Landroid/app/Application;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/multidexsupport/DDContext;->mApplication:Lcom/alibaba/android/dingtalkbase/multidexsupport/DDApplication;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 24
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 27
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public onTerminate()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 36
    return-void
.end method
