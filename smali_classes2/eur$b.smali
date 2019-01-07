.class final Leur$b;
.super Leur$e;
.source "TeleConfRecordAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leur;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field final synthetic b:Leur;


# direct methods
.method private constructor <init>(Leur;)V
    .locals 1

    .prologue
    .line 920
    iput-object p1, p0, Leur$b;->b:Leur;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Leur$e;-><init>(Leur;B)V

    return-void
.end method

.method synthetic constructor <init>(Leur;B)V
    .locals 0
    .param p1, "x0"    # Leur;

    .prologue
    .line 920
    invoke-direct {p0, p1}, Leur$b;-><init>(Leur;)V

    return-void
.end method
