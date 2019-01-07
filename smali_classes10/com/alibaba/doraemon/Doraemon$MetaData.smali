.class Lcom/alibaba/doraemon/Doraemon$MetaData;
.super Ljava/lang/Object;
.source "Doraemon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/Doraemon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MetaData"
.end annotation


# instance fields
.field public mDependencys:[Ljava/lang/String;

.field public mFetcher:Ljava/lang/String;

.field public mIsReg:Z

.field public mName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/doraemon/Doraemon$MetaData;->mIsReg:Z

    return-void
.end method
