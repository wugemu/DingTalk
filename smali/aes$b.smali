.class public final Laes$b;
.super Ljava/lang/Object;
.source "DingtalkMailDailyHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Laes;

.field private b:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Laes;Landroid/webkit/WebView;)V
    .locals 0
    .param p2, "view"    # Landroid/webkit/WebView;

    .prologue
    .line 383
    iput-object p1, p0, Laes$b;->a:Laes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 384
    iput-object p2, p0, Laes$b;->b:Landroid/webkit/WebView;

    .line 385
    return-void
.end method
