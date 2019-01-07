.class public Lcom/alibaba/doraemon/impl/image/DefaultUrlParser;
.super Ljava/lang/Object;
.source "DefaultUrlParser.java"

# interfaces
.implements Lcom/alibaba/doraemon/image/UrlParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public url2Key(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 11
    return-object p2
.end method
