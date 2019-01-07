.class public interface abstract Lcom/taobao/weex/ui/flat/FlatComponent;
.super Ljava/lang/Object;
.source "FlatComponent.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/taobao/weex/ui/flat/widget/Widget;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getOrCreateFlatWidget()Lcom/taobao/weex/ui/flat/widget/Widget;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract promoteToView(Z)Z
.end method
