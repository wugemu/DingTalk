.class public final Lavb;
.super Lava;
.source "MailEmptyItemSetting.java"


# instance fields
.field public h:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "folderId"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "fillColor"    # I

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3}, Lava;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lavb;->h:Z

    .line 15
    return-void
.end method
