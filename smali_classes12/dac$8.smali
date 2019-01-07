.class final Ldac$8;
.super Ljava/lang/Object;
.source "UserToBasicDataDelegate.java"

# interfaces
.implements Lcup$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldac;->b(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ldac;


# direct methods
.method constructor <init>(Ldac;Z)V
    .locals 0
    .param p1, "this$0"    # Ldac;

    .prologue
    .line 597
    iput-object p1, p0, Ldac$8;->b:Ldac;

    iput-boolean p2, p0, Ldac$8;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ldac;
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Ldac$8;->b:Ldac;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 605
    iget-boolean v0, p0, Ldac$8;->a:Z

    return v0
.end method
