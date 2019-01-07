.class public Lcom/ut/mini/crashhandler/UTExceptionParser$UTExceptionItem;
.super Ljava/lang/Object;
.source "UTExceptionParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ut/mini/crashhandler/UTExceptionParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UTExceptionItem"
.end annotation


# instance fields
.field mCrashDetail:Ljava/lang/String;

.field mCrashedByUT:Z

.field mExpName:Ljava/lang/String;

.field mMd5:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object v0, p0, Lcom/ut/mini/crashhandler/UTExceptionParser$UTExceptionItem;->mExpName:Ljava/lang/String;

    .line 83
    iput-object v0, p0, Lcom/ut/mini/crashhandler/UTExceptionParser$UTExceptionItem;->mMd5:Ljava/lang/String;

    .line 84
    iput-object v0, p0, Lcom/ut/mini/crashhandler/UTExceptionParser$UTExceptionItem;->mCrashDetail:Ljava/lang/String;

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ut/mini/crashhandler/UTExceptionParser$UTExceptionItem;->mCrashedByUT:Z

    return-void
.end method


# virtual methods
.method public getCrashDetail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/ut/mini/crashhandler/UTExceptionParser$UTExceptionItem;->mCrashDetail:Ljava/lang/String;

    return-object v0
.end method

.method public getExpName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/ut/mini/crashhandler/UTExceptionParser$UTExceptionItem;->mExpName:Ljava/lang/String;

    return-object v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ut/mini/crashhandler/UTExceptionParser$UTExceptionItem;->mMd5:Ljava/lang/String;

    return-object v0
.end method

.method public isCrashedByUT()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/ut/mini/crashhandler/UTExceptionParser$UTExceptionItem;->mCrashedByUT:Z

    return v0
.end method

.method public setCrashDetail(Ljava/lang/String;)V
    .locals 0
    .param p1, "aCrashDetail"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/ut/mini/crashhandler/UTExceptionParser$UTExceptionItem;->mCrashDetail:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setExpName(Ljava/lang/String;)V
    .locals 0
    .param p1, "aExpName"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/ut/mini/crashhandler/UTExceptionParser$UTExceptionItem;->mExpName:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0
    .param p1, "aMd5"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/ut/mini/crashhandler/UTExceptionParser$UTExceptionItem;->mMd5:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setmCrashedByUT(Z)V
    .locals 0
    .param p1, "mCrashedByUT"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/ut/mini/crashhandler/UTExceptionParser$UTExceptionItem;->mCrashedByUT:Z

    .line 117
    return-void
.end method
