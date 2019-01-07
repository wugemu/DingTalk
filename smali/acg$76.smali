.class final Lacg$76;
.super Ljava/lang/Object;
.source "MailNavigator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 4931
    iput-object p1, p0, Lacg$76;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 4934
    iget-object v0, p0, Lacg$76;->a:Ljava/lang/String;

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 4935
    return-void
.end method
