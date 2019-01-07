.class final Lacw$c;
.super Lacw$a;
.source "CMailUserDefineFolderTypeAdaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "selectFolderType"    # I

    .prologue
    .line 269
    invoke-direct {p0, p1}, Lacw$a;-><init>(I)V

    .line 270
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 274
    sget v0, Laxo$g;->cmail_mailbox_folder:I

    return v0
.end method

.method public final a(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 279
    const/4 v0, 0x0

    return-object v0
.end method
