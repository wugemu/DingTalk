.class public abstract Lcom/alibaba/android/dingtalk/userbase/ChooseControlAdapter;
.super Ljava/lang/Object;
.source "ChooseControlAdapter.java"

# interfaces
.implements Lcom/alibaba/android/dingtalk/userbase/IChooseControl;


# static fields
.field private static final serialVersionUID:J = 0x4dbcaf720d9ec862L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addChooseObject(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public addChooseObject(Ljava/util/List;)Z
    .locals 1
    .param p1, "t"    # Ljava/util/List;

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public clear()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public getChooseResult()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChooseResultHaveId()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChooseResultIds()[J
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    new-array v0, v0, [J

    return-object v0
.end method

.method public getChooseResultNoId()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisableSelectResult()Ljava/util/List;
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRequestSelectResult()Ljava/util/List;
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public isDisable(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public isHasSelected(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public isRequestSelect(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleChoose(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public removeChooseObject(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public removeChooseObject(Ljava/util/ArrayList;)Z
    .locals 1
    .param p1, "t"    # Ljava/util/ArrayList;

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public setChoosedList(Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "list"    # Ljava/util/ArrayList;

    .prologue
    .line 17
    return-void
.end method

.method public setDisChooseList(Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "list"    # Ljava/util/ArrayList;

    .prologue
    .line 22
    return-void
.end method

.method public setRequestSelectList(Ljava/util/List;)V
    .locals 0
    .param p1, "list"    # Ljava/util/List;

    .prologue
    .line 27
    return-void
.end method
