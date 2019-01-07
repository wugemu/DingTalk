.class public Landroid/support/v4/app/SupportActivity;
.super Landroid/app/Activity;
.source "SupportActivity.java"

# interfaces
.implements Ld;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/SupportActivity$a;
    }
.end annotation


# instance fields
.field private mExtraDataMap:Lfw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfw",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/SupportActivity$a;",
            ">;",
            "Landroid/support/v4/app/SupportActivity$a;",
            ">;"
        }
    .end annotation
.end field

.field private mLifecycleRegistry:Le;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    new-instance v0, Lfw;

    invoke-direct {v0}, Lfw;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/SupportActivity;->mExtraDataMap:Lfw;

    .line 47
    new-instance v0, Le;

    invoke-direct {v0, p0}, Le;-><init>(Ld;)V

    iput-object v0, p0, Landroid/support/v4/app/SupportActivity;->mLifecycleRegistry:Le;

    .line 96
    return-void
.end method


# virtual methods
.method public getExtraData(Ljava/lang/Class;)Landroid/support/v4/app/SupportActivity$a;
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/SupportActivity$a;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "extraDataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Landroid/support/v4/app/SupportActivity;->mExtraDataMap:Lfw;

    invoke-virtual {v0, p1}, Lfw;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/SupportActivity$a;

    return-object v0
.end method

.method public getLifecycle()Landroid/arch/lifecycle/Lifecycle;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Landroid/support/v4/app/SupportActivity;->mLifecycleRegistry:Le;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-static {p0}, Landroid/arch/lifecycle/ReportFragment;->a(Landroid/app/Activity;)V

    .line 68
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Landroid/support/v4/app/SupportActivity;->mLifecycleRegistry:Le;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$State;->CREATED:Landroid/arch/lifecycle/Lifecycle$State;

    .line 1101
    iput-object v1, v0, Le;->a:Landroid/arch/lifecycle/Lifecycle$State;

    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 75
    return-void
.end method

.method public putExtraData(Landroid/support/v4/app/SupportActivity$a;)V
    .locals 2
    .param p1, "extraData"    # Landroid/support/v4/app/SupportActivity$a;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Landroid/support/v4/app/SupportActivity;->mExtraDataMap:Lfw;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lfw;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method
