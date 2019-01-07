.class public Lglr$d;
.super Lglr$k;
.source "CSpaceAuthManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lglr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field protected a:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field protected b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lglr$k;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 0
    .param p1, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 97
    iput-object p1, p0, Lglr$d;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 98
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "canReleaseEditLock"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Lglr$d;->b:Z

    .line 102
    return-void
.end method
