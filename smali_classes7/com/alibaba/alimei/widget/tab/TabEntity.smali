.class public Lcom/alibaba/alimei/widget/tab/TabEntity;
.super Ljava/lang/Object;
.source "TabEntity.java"

# interfaces
.implements Lcom/alibaba/alimei/widget/tab/listener/CustomTabEntity;


# instance fields
.field public selectedIcon:I

.field public title:Ljava/lang/String;

.field public unSelectedIcon:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "selectedIcon"    # I
    .param p3, "unSelectedIcon"    # I

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/alibaba/alimei/widget/tab/TabEntity;->title:Ljava/lang/String;

    .line 13
    iput p2, p0, Lcom/alibaba/alimei/widget/tab/TabEntity;->selectedIcon:I

    .line 14
    iput p3, p0, Lcom/alibaba/alimei/widget/tab/TabEntity;->unSelectedIcon:I

    .line 15
    return-void
.end method


# virtual methods
.method public getTabSelectedIcon()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/TabEntity;->selectedIcon:I

    return v0
.end method

.method public getTabTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/alibaba/alimei/widget/tab/TabEntity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTabUnselectedIcon()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/TabEntity;->unSelectedIcon:I

    return v0
.end method
