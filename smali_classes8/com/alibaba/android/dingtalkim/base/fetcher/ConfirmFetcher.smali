.class public abstract Lcom/alibaba/android/dingtalkim/base/fetcher/ConfirmFetcher;
.super Ljava/lang/Object;
.source "ConfirmFetcher.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x22f4e91d1a67dfdbL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract message(Landroid/content/Context;Ljava/io/Serializable;)Ljava/lang/String;
.end method

.method public negativeButton()I
    .locals 1
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 29
    sget v0, Ldby$c;->cancel:I

    return v0
.end method

.method public positiveButton()I
    .locals 1
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 24
    sget v0, Ldby$c;->sure:I

    return v0
.end method

.method public abstract title(Landroid/content/Context;Ljava/io/Serializable;)Ljava/lang/String;
.end method
