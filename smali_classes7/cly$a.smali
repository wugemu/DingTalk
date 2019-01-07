.class final Lcly$a;
.super Ljava/lang/Object;
.source "MailHtml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcly;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final a:Lorg/ccil/cowan/tagsoup/HTMLSchema;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 122
    new-instance v0, Lorg/ccil/cowan/tagsoup/HTMLSchema;

    invoke-direct {v0}, Lorg/ccil/cowan/tagsoup/HTMLSchema;-><init>()V

    sput-object v0, Lcly$a;->a:Lorg/ccil/cowan/tagsoup/HTMLSchema;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lorg/ccil/cowan/tagsoup/HTMLSchema;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcly$a;->a:Lorg/ccil/cowan/tagsoup/HTMLSchema;

    return-object v0
.end method
