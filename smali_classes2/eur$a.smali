.class final Leur$a;
.super Leur$e;
.source "TeleConfRecordAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leur;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/view/View;

.field b:Lcom/alibaba/android/teleconf/widget/UnFoldGridView;

.field final synthetic c:Leur;


# direct methods
.method private constructor <init>(Leur;)V
    .locals 1

    .prologue
    .line 915
    iput-object p1, p0, Leur$a;->c:Leur;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Leur$e;-><init>(Leur;B)V

    return-void
.end method

.method synthetic constructor <init>(Leur;B)V
    .locals 0
    .param p1, "x0"    # Leur;

    .prologue
    .line 915
    invoke-direct {p0, p1}, Leur$a;-><init>(Leur;)V

    return-void
.end method
