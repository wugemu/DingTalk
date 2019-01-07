.class final Lcom/alibaba/alimei/mail/adapter/CMailMovetoFolderAdapter$c;
.super Lcom/alibaba/alimei/mail/adapter/CMailMovetoFolderAdapter$a;
.source "CMailMovetoFolderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/adapter/CMailMovetoFolderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/mail/adapter/CMailMovetoFolderAdapter$a;-><init>(B)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/adapter/CMailMovetoFolderAdapter$c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 251
    sget v0, Laxo$g;->cmail_mailbox_folder:I

    return v0
.end method

.method public final a(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 256
    const/4 v0, 0x0

    return-object v0
.end method
