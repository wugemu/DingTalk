.class public final Lcom/alibaba/android/dingtalk/permission/compat/avoid/app/AvoidOnRequestFragment$a;
.super Ljava/lang/Object;
.source "AvoidOnRequestFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/permission/compat/avoid/app/AvoidOnRequestFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:I

.field final b:[Ljava/lang/String;

.field final c:Lbza;


# direct methods
.method private constructor <init>(I[Ljava/lang/String;Lbza;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "callback"    # Lbza;

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput p1, p0, Lcom/alibaba/android/dingtalk/permission/compat/avoid/app/AvoidOnRequestFragment$a;->a:I

    .line 153
    iput-object p2, p0, Lcom/alibaba/android/dingtalk/permission/compat/avoid/app/AvoidOnRequestFragment$a;->b:[Ljava/lang/String;

    .line 154
    iput-object p3, p0, Lcom/alibaba/android/dingtalk/permission/compat/avoid/app/AvoidOnRequestFragment$a;->c:Lbza;

    .line 155
    return-void
.end method

.method public synthetic constructor <init>(I[Ljava/lang/String;Lbza;B)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # [Ljava/lang/String;
    .param p3, "x2"    # Lbza;

    .prologue
    .line 146
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalk/permission/compat/avoid/app/AvoidOnRequestFragment$a;-><init>(I[Ljava/lang/String;Lbza;)V

    return-void
.end method
