.class public Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;
.super Lcom/alibaba/android/rimet/widget/BaseFragment;
.source "EditorFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$d;,
        Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$e;,
        Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$ActionType;,
        Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$a;,
        Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$c;,
        Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$b;
    }
.end annotation


# static fields
.field private static final i:Ljava/lang/String;


# instance fields
.field a:Lorg/json/JSONObject;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;

.field d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$e;",
            ">;"
        }
    .end annotation
.end field

.field protected e:Landroid/os/Handler;

.field private j:Landroid/widget/LinearLayout;

.field private k:Z

.field private l:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$c;

.field private m:Lgzm;

.field private n:Z

.field private o:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$e;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/lang/Runnable;

.field private q:Landroid/text/Editable$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const-class v0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 320
    invoke-direct {p0}, Lcom/alibaba/android/rimet/widget/BaseFragment;-><init>()V

    .line 148
    iput-boolean v1, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->k:Z

    .line 152
    invoke-static {}, Lgzp;->a()Lgzm;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->m:Lgzm;

    .line 153
    iput-boolean v1, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->n:Z

    .line 155
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->d:Ljava/util/Map;

    .line 156
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->o:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 158
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->e:Landroid/os/Handler;

    .line 160
    new-instance v0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$1;-><init>(Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->p:Ljava/lang/Runnable;

    .line 170
    new-instance v0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$2;-><init>(Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->q:Landroid/text/Editable$Factory;

    .line 322
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;
    .locals 3
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 312
    new-instance v1, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;

    invoke-direct {v1}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;-><init>()V

    .line 313
    .local v1, "fragment":Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 315
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "json"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-virtual {v1, v0}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->setArguments(Landroid/os/Bundle;)V

    .line 317
    return-object v1
.end method

.method private a(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 13
    .param p1, "fieldList"    # Lorg/json/JSONArray;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v9, 0x0

    .line 793
    if-nez p1, :cond_1

    .line 794
    const-string/jumbo v10, "oa"

    const-string/jumbo v11, "Editor->checkAndSetFields"

    const-string/jumbo v12, "fieldList is null"

    invoke-static {v10, v11, v12}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v9

    .line 828
    .end local p1    # "fieldList":Lorg/json/JSONArray;
    :cond_0
    :goto_0
    return-object p1

    .line 798
    .restart local p1    # "fieldList":Lorg/json/JSONArray;
    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 799
    .local v2, "fieldSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_0

    .line 800
    iget-object v10, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->b:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 801
    .local v1, "et":Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 803
    .local v8, "value":Ljava/lang/String;
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 804
    .local v4, "object":Lorg/json/JSONObject;
    if-eqz v4, :cond_4

    .line 808
    const-string/jumbo v10, "require"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 809
    .local v5, "require":Z
    if-eqz v5, :cond_3

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 810
    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 811
    const-string/jumbo v10, "requireTips"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 812
    .local v6, "requireTips":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 813
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v7

    .line 814
    .local v7, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const v10, 0x7f091ccb

    invoke-virtual {p0, v10}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 815
    const-string/jumbo v10, "placeholder"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 816
    invoke-virtual {v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 818
    .end local v7    # "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_2
    invoke-static {v6}, Lcms;->a(Ljava/lang/String;)V

    move-object p1, v9

    .line 819
    goto :goto_0

    .line 822
    .end local v6    # "requireTips":Ljava/lang/String;
    :cond_3
    :try_start_0
    const-string/jumbo v10, "value"

    invoke-virtual {v4, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 799
    .end local v5    # "require":Z
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 823
    .restart local v5    # "require":Z
    :catch_0
    move-exception v0

    .line 824
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method private a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 8
    .param p1, "editorObject"    # Lorg/json/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 832
    if-nez p1, :cond_0

    .line 833
    const-string/jumbo v5, "oa"

    const-string/jumbo v6, "Editor->checkAndSetEditor"

    const-string/jumbo v7, "editorObject is null"

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v4

    .line 879
    .end local p1    # "editorObject":Lorg/json/JSONObject;
    :goto_0
    return-object p1

    .line 838
    .restart local p1    # "editorObject":Lorg/json/JSONObject;
    :cond_0
    iget-object v5, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;->getPostContent()Ljava/lang/String;

    move-result-object v3

    .line 839
    .local v3, "value":Ljava/lang/String;
    const-string/jumbo v5, "require"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 840
    .local v1, "require":Z
    if-eqz v1, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 841
    iget-object v5, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;->requestFocus()Z

    .line 842
    const-string/jumbo v5, "requireTips"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 843
    .local v2, "requireTips":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 844
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f091cc9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 846
    :cond_1
    invoke-static {v2}, Lcms;->a(Ljava/lang/String;)V

    move-object p1, v4

    .line 847
    goto :goto_0

    .line 850
    .end local v2    # "requireTips":Ljava/lang/String;
    :cond_2
    :try_start_0
    const-string/jumbo v4, "value"

    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 851
    :catch_0
    move-exception v0

    .line 852
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$a;)V
    .locals 3
    .param p1, "action"    # Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$a;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 235
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorActivity;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 236
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "url"

    iget-object v2, p1, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    const-string/jumbo v1, "operation"

    iget-object v2, p1, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 239
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;

    .prologue
    const/4 v5, 0x0

    .line 81
    .line 9526
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->n:Z

    .line 9528
    new-instance v2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 9529
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->o:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 9530
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->o:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$e;

    .line 9531
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->d:Ljava/util/Map;

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$e;->a:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$e;

    .line 9533
    if-eqz v1, :cond_0

    .line 9538
    iget-object v1, v1, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$e;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 9539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$e;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " has been uploaded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 9543
    :cond_1
    iget-object v1, v0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$e;->c:Ljava/io/File;

    if-nez v1, :cond_2

    .line 9544
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->m:Lgzm;

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$e;->a:Ljava/lang/String;

    iget-boolean v4, v0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$e;->d:Z

    invoke-interface {v1, v3, v4}, Lgzm;->a(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$e;->c:Ljava/io/File;

    .line 9545
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Compress image->"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$e;->c:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9547
    :cond_2
    iget-object v1, v0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$e;->c:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 9551
    invoke-virtual {v2, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9555
    :cond_3
    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 9557
    new-instance v3, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$d;

    invoke-direct {v3, p0, v5}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$d;-><init>(Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;B)V

    .line 9558
    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    .line 10472
    iput v0, v3, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$d;->b:I

    .line 9560
    :goto_1
    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 9563
    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$e;

    .line 9564
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->d:Ljava/util/Map;

    iget-object v4, v0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$e;->a:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$e;

    .line 9566
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    .line 9567
    invoke-static {v4}, Lcms;->e(Landroid/content/Context;)Z

    move-result v4

    .line 9568
    if-eqz v4, :cond_4

    .line 9569
    new-instance v4, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$4;

    invoke-direct {v4, p0, v0, v1, v3}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$4;-><init>(Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$e;Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$e;Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$d;)V

    .line 9595
    invoke-static {}, Lify;->a()Lify;

    move-result-object v1

    iget-object v0, v0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$e;->c:Ljava/io/File;

    invoke-virtual {v1, v0, v4}, Lify;->a(Ljava/io/File;Lifw;)V

    goto :goto_1

    .line 9597
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Bad network->"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$e;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9599
    iput-boolean v5, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->n:Z

    .line 9600
    invoke-direct {p0}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->g()V

    .line 9601
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->e:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$5;-><init>(Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 81
    :cond_5
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;[Lcqj;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;
    .param p1, "x1"    # [Lcqj;

    .prologue
    .line 81
    .line 11214
    if-eqz p1, :cond_2

    array-length v0, p1

    if-lez v0, :cond_2

    .line 11215
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    .line 11216
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "delete span "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12046
    iget-object v4, v2, Lcqj;->a:Landroid/net/Uri;

    .line 11216
    invoke-virtual {v4}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13046
    iget-object v3, v2, Lcqj;->a:Landroid/net/Uri;

    .line 11218
    if-eqz v3, :cond_0

    .line 14046
    iget-object v3, v2, Lcqj;->a:Landroid/net/Uri;

    .line 11219
    invoke-virtual {v3}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v3

    .line 11220
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 11221
    iget-object v4, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->d:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11225
    :cond_0
    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;->a(Lcqj;)V

    .line 11215
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11228
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->l:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$c;

    if-eqz v0, :cond_2

    .line 11229
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->l:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$c;

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$c;->a(I)V

    .line 81
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->n:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;

    return-object v0
.end method

.method private b(Lorg/json/JSONObject;)Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$a;
    .locals 6
    .param p1, "actionObject"    # Lorg/json/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 908
    new-instance v0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$a;

    invoke-direct {v0, p0}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$a;-><init>(Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;)V

    .line 909
    .local v0, "action":Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$a;
    const-string/jumbo v3, "operation"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 910
    .local v2, "operation":Ljava/lang/String;
    const-string/jumbo v3, "continue"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 911
    const-string/jumbo v3, "continue"

    iput-object v3, v0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$a;->a:Ljava/lang/String;

    .line 4926
    const-string/jumbo v3, "url"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4927
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 4928
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    .line 4929
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 4930
    const-string/jumbo v5, "?"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4931
    const-string/jumbo v3, "&"

    invoke-virtual {v4, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 4935
    :goto_0
    const-string/jumbo v3, "dd_nav_bgcolor=FF5E97F6"

    invoke-virtual {v4, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 4936
    const-string/jumbo v3, "&"

    invoke-virtual {v4, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 4937
    const-string/jumbo v3, "localKey"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4938
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 4939
    invoke-virtual {v4, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 4940
    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 4941
    invoke-virtual {v4, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 4944
    :cond_0
    invoke-virtual {v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 912
    :cond_1
    iput-object v3, v0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$a;->b:Ljava/lang/String;

    .line 914
    :try_start_0
    const-string/jumbo v3, "url"

    iget-object v4, v0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 922
    :goto_1
    return-object v0

    .line 4933
    :cond_2
    const-string/jumbo v3, "?"

    invoke-virtual {v4, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_0

    .line 915
    :catch_0
    move-exception v1

    .line 916
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 919
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_3
    const-string/jumbo v3, "commit"

    iput-object v3, v0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$a;->a:Ljava/lang/String;

    .line 920
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$a;->b:Ljava/lang/String;

    goto :goto_1
.end method

.method private c(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 11
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 958
    if-nez p1, :cond_1

    .line 1006
    :cond_0
    :goto_0
    return-object v7

    .line 962
    :cond_1
    const-string/jumbo v8, "value"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lldz;->a(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    .line 963
    .local v0, "contentDocument":Lorg/jsoup/nodes/Document;
    if-eqz v0, :cond_0

    .line 968
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->d:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 5072
    const-string/jumbo v7, "body"

    invoke-virtual {v0, v7, v0}, Lorg/jsoup/nodes/Document;->a(Ljava/lang/String;Llej;)Lleh;

    move-result-object v7

    .line 969
    invoke-virtual {v7}, Lleh;->p()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 972
    :cond_2
    const-string/jumbo v8, "img"

    invoke-virtual {v0, v8}, Lorg/jsoup/nodes/Document;->g(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v5

    .line 973
    .local v5, "media":Lorg/jsoup/select/Elements;
    const/4 v2, 0x0

    .line 974
    .local v2, "hasUpload":Z
    invoke-virtual {v5}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lleh;

    .line 975
    .local v3, "img":Lleh;
    if-eqz v3, :cond_3

    .line 979
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 6065
    iget-object v10, v3, Lleh;->c:Lleq;

    .line 7037
    iget-object v10, v10, Lleq;->b:Ljava/lang/String;

    .line 979
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "src"

    invoke-virtual {v3, v10}, Lleh;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "android-uri"

    invoke-virtual {v3, v10}, Lleh;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 980
    const-string/jumbo v9, "android-uri"

    invoke-virtual {v3, v9}, Lleh;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 981
    .local v4, "imgSrc":Ljava/lang/String;
    invoke-static {v4}, Lhcs;->d(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 982
    iget-object v9, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->d:Ljava/util/Map;

    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$e;

    .line 983
    .local v6, "object":Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$e;
    if-eqz v6, :cond_4

    .line 984
    iget-object v9, v6, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$e;->b:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 985
    const/4 v2, 0x1

    .line 7512
    if-eqz v6, :cond_4

    .line 7516
    iget-object v9, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->o:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v9, v6}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 7517
    iget-boolean v9, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->n:Z

    if-nez v9, :cond_4

    iget-object v9, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->o:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v9}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    .line 7518
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Start UploadTask "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v6, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$e;->a:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7519
    sget-object v9, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->i:Ljava/lang/String;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v9

    iget-object v10, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->p:Ljava/lang/Runnable;

    invoke-interface {v9, v10}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 994
    .end local v6    # "object":Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$e;
    :cond_4
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 8065
    iget-object v10, v3, Lleh;->c:Lleq;

    .line 9037
    iget-object v10, v10, Lleq;->b:Ljava/lang/String;

    .line 994
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "src"

    invoke-virtual {v3, v10}, Lleh;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 988
    .restart local v6    # "object":Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$e;
    :cond_5
    const-string/jumbo v9, "src"

    iget-object v10, v6, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$e;->b:Ljava/lang/String;

    invoke-virtual {v3, v9, v10}, Lleh;->a(Ljava/lang/String;Ljava/lang/String;)Lleh;

    goto :goto_2

    .line 992
    .end local v6    # "object":Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$e;
    :cond_6
    const-string/jumbo v9, "src"

    invoke-virtual {v3, v9, v4}, Lleh;->a(Ljava/lang/String;Ljava/lang/String;)Lleh;

    goto :goto_2

    .line 997
    .end local v3    # "img":Lleh;
    .end local v4    # "imgSrc":Ljava/lang/String;
    :cond_7
    if-nez v2, :cond_8

    .line 998
    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->b()Lleh;

    move-result-object v7

    invoke-virtual {v7}, Lleh;->p()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 1001
    :cond_8
    :try_start_0
    const-string/jumbo v8, "value"

    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->p()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1002
    :catch_0
    move-exception v1

    .line 1003
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->a:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->d:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;)Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$c;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->l:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$c;

    return-object v0
.end method

.method private f()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 277
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->a:Lorg/json/JSONObject;

    const-string/jumbo v4, "action"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 278
    .local v1, "actionObject":Lorg/json/JSONObject;
    if-eqz v1, :cond_1

    .line 280
    const-string/jumbo v3, "localKey"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, "key":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 282
    const-class v3, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$3;

    invoke-direct {v4, p0, v2}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$3;-><init>(Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 292
    :cond_0
    invoke-direct {p0, v1}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->b(Lorg/json/JSONObject;)Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$a;

    move-result-object v0

    .line 293
    .local v0, "action":Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$a;
    invoke-direct {p0, v0}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->a(Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$a;)V

    .line 294
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Final Result\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->a:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .end local v0    # "action":Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$a;
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method static synthetic f(Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->f()V

    return-void
.end method

.method private g()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 299
    new-instance v0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$a;

    invoke-direct {v0, p0}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$a;-><init>(Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;)V

    .line 300
    .local v0, "action":Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$a;
    const-string/jumbo v1, "failedtosendimage"

    iput-object v1, v0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$a;->a:Ljava/lang/String;

    .line 301
    invoke-direct {p0, v0}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->a(Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$a;)V

    .line 302
    return-void
.end method

.method static synthetic g(Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->g()V

    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 748
    .line 4670
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    .line 4671
    if-eqz v6, :cond_0

    .line 4674
    const-string/jumbo v4, "input_method"

    invoke-virtual {v6, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    .line 4675
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4676
    invoke-virtual {v6}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v6

    .line 4677
    if-eqz v6, :cond_0

    .line 4678
    invoke-virtual {v6}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v4, v6, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 750
    :cond_0
    iget-object v4, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->a:Lorg/json/JSONObject;

    const-string/jumbo v6, "fieldList"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 751
    .local v3, "fieldList":Lorg/json/JSONArray;
    invoke-direct {p0, v3}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->a(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v3

    .line 752
    if-nez v3, :cond_1

    move v4, v5

    .line 789
    :goto_0
    return v4

    .line 757
    :cond_1
    iget-object v4, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->a:Lorg/json/JSONObject;

    const-string/jumbo v6, "editor"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 758
    .local v2, "editorObject":Lorg/json/JSONObject;
    invoke-direct {p0, v2}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 759
    if-nez v2, :cond_2

    move v4, v5

    .line 760
    goto :goto_0

    .line 762
    :cond_2
    invoke-direct {p0, v2}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->c(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 763
    .local v0, "content":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 765
    :try_start_0
    const-string/jumbo v4, "value"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 766
    invoke-direct {p0}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->f()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 789
    :cond_3
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 767
    :catch_0
    move-exception v1

    .line 768
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 685
    invoke-super {p0, p1}, Lcom/alibaba/android/rimet/widget/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 687
    :try_start_0
    check-cast p1, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$c;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->l:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$c;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 691
    :goto_0
    return-void

    .line 688
    :catch_0
    move-exception v0

    .line 689
    .local v0, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 724
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 326
    invoke-super {p0, p1}, Lcom/alibaba/android/rimet/widget/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 329
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->b:Ljava/util/List;

    .line 331
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_0

    .line 346
    :goto_0
    return-void

    .line 337
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "json"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 338
    .local v1, "json":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->a:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 339
    .end local v1    # "json":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 340
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 352
    const v1, 0x7f0404b1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2361
    .local v0, "root":Landroid/view/View;
    const-string/jumbo v1, ""

    .line 2362
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->a:Lorg/json/JSONObject;

    const-string/jumbo v3, "title"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2363
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->a:Lorg/json/JSONObject;

    const-string/jumbo v4, "action"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 2364
    if-eqz v3, :cond_0

    .line 2365
    const-string/jumbo v1, "text"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2367
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->l:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$c;

    if-eqz v3, :cond_1

    .line 2368
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->l:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$c;

    invoke-interface {v3, v2}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$c;->a(Ljava/lang/String;)V

    .line 2369
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->l:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$c;

    invoke-interface {v2, v1}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$c;->b(Ljava/lang/String;)V

    .line 2400
    :cond_1
    const v1, 0x7f11152c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->j:Landroid/widget/LinearLayout;

    .line 2402
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->a:Lorg/json/JSONObject;

    const-string/jumbo v2, "fieldList"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 2403
    if-eqz v2, :cond_3

    .line 2407
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2408
    const v3, 0x7f0b01c2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 2409
    const v4, 0x7f0b01c4

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 2410
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 2411
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_3

    .line 2412
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 2413
    if-eqz v6, :cond_2

    .line 2427
    new-instance v7, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 2428
    const-string/jumbo v8, "placeholder"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 2429
    const-string/jumbo v8, "value"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2430
    const-string/jumbo v8, "maxLength"

    const/16 v9, 0x28

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 2431
    const-string/jumbo v9, "limitTips"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2432
    const/4 v9, 0x1

    new-array v9, v9, [Landroid/text/InputFilter;

    const/4 v10, 0x0

    new-instance v11, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$b;

    invoke-direct {v11, p0, v8, v6}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$b;-><init>(Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;ILjava/lang/String;)V

    aput-object v11, v9, v10

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 2434
    const/4 v6, 0x0

    invoke-virtual {v7, v6}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2435
    const/4 v6, 0x1

    invoke-virtual {v7, v6}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 2436
    const/high16 v6, 0x41900000    # 18.0f

    invoke-virtual {v7, v6}, Landroid/widget/EditText;->setTextSize(F)V

    .line 2437
    const/high16 v6, -0x1000000

    invoke-virtual {v7, v6}, Landroid/widget/EditText;->setTextColor(I)V

    .line 2438
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f100172

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 2439
    const v6, 0x10000005

    invoke-virtual {v7, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 2440
    const v6, 0xc000

    invoke-virtual {v7, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 2442
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0b01c3

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    .line 2443
    new-instance v8, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v9, -0x1

    invoke-direct {v8, v9, v6}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 2444
    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-virtual {v8, v3, v6, v4, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 2445
    iget-object v6, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2446
    iget-object v6, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->b:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2505
    new-instance v6, Lcom/alibaba/android/rimet/widget/MessageDivider;

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/alibaba/android/rimet/widget/MessageDivider;-><init>(Landroid/content/Context;)V

    .line 2506
    new-instance v7, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v8, -0x1

    const/4 v9, 0x1

    invoke-direct {v7, v8, v9}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 2507
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v3, v8, v4, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 2508
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2411
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 3383
    :cond_3
    const v1, 0x7f11152d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;

    iput-object v1, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;

    .line 3384
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->q:Landroid/text/Editable$Factory;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;->setEditableFactory(Landroid/text/Editable$Factory;)V

    .line 3386
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->a:Lorg/json/JSONObject;

    const-string/jumbo v2, "editor"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 3387
    if-eqz v1, :cond_4

    .line 3388
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;

    const-string/jumbo v3, "value"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;->setText(Ljava/lang/CharSequence;)V

    .line 3389
    const-string/jumbo v2, "placeholder"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3390
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;

    invoke-virtual {v3, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 3391
    const-string/jumbo v2, "maxLength"

    const/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 3392
    const-string/jumbo v3, "limitTips"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3393
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/text/InputFilter;

    const/4 v5, 0x0

    new-instance v6, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$b;

    invoke-direct {v6, p0, v2, v1}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$b;-><init>(Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;ILjava/lang/String;)V

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 357
    :cond_4
    return-object v0
.end method

.method public onDestroy()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 701
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;

    .line 4161
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 4162
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    const-class v2, Lcqj;

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcqj;

    .line 4163
    if-eqz v0, :cond_1

    .line 4167
    array-length v4, v0

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v0, v2

    .line 4168
    if-eqz v1, :cond_0

    .line 4171
    invoke-virtual {v1}, Lcqj;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 4172
    instance-of v5, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_0

    .line 4173
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 4174
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 4175
    if-eqz v1, :cond_0

    .line 4176
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 4167
    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 702
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->l:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$c;

    .line 705
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 709
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->o:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 710
    iput-boolean v3, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->n:Z

    .line 712
    invoke-super {p0}, Lcom/alibaba/android/rimet/widget/BaseFragment;->onDestroy()V

    .line 713
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 695
    invoke-super {p0}, Lcom/alibaba/android/rimet/widget/BaseFragment;->onDetach()V

    .line 696
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->l:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$c;

    .line 697
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 717
    const/4 v0, 0x0

    return v0
.end method
