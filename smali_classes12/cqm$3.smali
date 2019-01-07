.class final Lcqm$3;
.super Ljava/lang/Object;
.source "SJLinkify.java"

# interfaces
.implements Lcqm$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcqm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/regex/Matcher;)Ljava/lang/String;
    .locals 1
    .param p1, "match"    # Ljava/util/regex/Matcher;

    .prologue
    .line 224
    invoke-static {p1}, Lcqn;->a(Ljava/util/regex/Matcher;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
