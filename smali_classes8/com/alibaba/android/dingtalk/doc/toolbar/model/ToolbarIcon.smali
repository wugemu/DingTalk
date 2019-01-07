.class public Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon;
.super Ljava/lang/Object;
.source "ToolbarIcon.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon$ToolbarType;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x66e9275a41639a64L


# instance fields
.field private iconFontId:Ljava/lang/Integer;

.field private showRedDot:Z

.field private type:Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon$ToolbarType;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon$ToolbarType;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "type"    # Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon$ToolbarType;
    .param p2, "drawable"    # Ljava/lang/Integer;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon;->type:Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon$ToolbarType;

    .line 23
    iput-object p2, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon;->iconFontId:Ljava/lang/Integer;

    .line 24
    return-void
.end method


# virtual methods
.method public getIconFontId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon;->iconFontId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getType()Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon$ToolbarType;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon;->type:Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon$ToolbarType;

    return-object v0
.end method

.method public isShowRedDot()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon;->showRedDot:Z

    return v0
.end method

.method public setIconFontId(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "icon"    # Ljava/lang/Integer;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon;->iconFontId:Ljava/lang/Integer;

    .line 28
    return-void
.end method

.method public setShowRedDot(Z)V
    .locals 0
    .param p1, "showRedDot"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon;->showRedDot:Z

    .line 36
    return-void
.end method

.method public setType(Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon$ToolbarType;)V
    .locals 0
    .param p1, "type"    # Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon$ToolbarType;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon;->type:Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon$ToolbarType;

    .line 32
    return-void
.end method
